.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
lea edi, qword ptr [rax + rdx + 65]
test bl, al
sbb dl, dl
sub esi, -120
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
cmovl edx, ecx
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
test rcx, 59
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
movsx rdx, cl
lea rcx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
