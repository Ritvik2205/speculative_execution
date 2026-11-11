.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or ecx, 33
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
or dl, dil
btr cx, si
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
or dil, -76
and dl, bl
test edx, -372470678
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and ax, 29207
test al, 22
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and al, 75
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
