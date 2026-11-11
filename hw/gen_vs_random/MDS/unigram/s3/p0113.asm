.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edx
cmovnz ecx, ecx
test dx, 16353
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
not dl
or bl, -52
cmovz ax, ax
and dl, 57 # instrumentation
cmovnb di, cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
xor cl, bl
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
not ecx
or cl, dl
btc rdx, 68
or ebx, edx
not rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
