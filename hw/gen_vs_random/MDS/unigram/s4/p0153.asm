.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovns ecx, ecx
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
or al, cl
btc cx, 104
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and sil, al
or al, dl
cmovo cx, bx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
jmp .bb_0.1
.bb_0.1:
bt ax, di
cmovnb di, cx
and al, 33 # instrumentation
cmovnle ecx, ebx
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
bt edi, edi
and esi, 60
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and bx, -21
bts rcx, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
