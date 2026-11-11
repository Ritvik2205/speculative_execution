.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, bl
or al, bl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor ax, -12492
bt si, di
not bl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
xor bl, al
test rax, 1978892575
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
