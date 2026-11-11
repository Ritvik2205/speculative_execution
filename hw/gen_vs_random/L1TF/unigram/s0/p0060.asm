.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
dec ebx
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 1
mul rax
or si, 70
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, -109
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
bt ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
test eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
