.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
test bl, al
btr di, bx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
btr rbx, 63
or edi, ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 14
btr ax, 193
cmovs edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 21
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
xor di, -83
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
cmovz rax, rax
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
