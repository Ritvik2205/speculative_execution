.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
lea rbx, qword ptr [rax + rcx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
add bl, dl
adc sil, dil
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
mov bl, dil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
xchg si, dx
add dl, -125 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 119
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
