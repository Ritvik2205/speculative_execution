.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and dx, cx
cmovbe rbx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 85
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
bts dx, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or dl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and cl, -101
cmovl rbx, rsi
or al, -8
and cl, 122 # instrumentation
cmovnb rcx, rax
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and di, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
