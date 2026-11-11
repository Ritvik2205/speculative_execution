.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
add al, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
lea bx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
cmovno rdx, rax
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
add sil, -93 # instrumentation
setnb sil
bt bx, 14
xor dl, 71
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 14
adc rbx, rax
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
