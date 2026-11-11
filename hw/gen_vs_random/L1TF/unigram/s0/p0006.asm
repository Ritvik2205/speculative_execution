.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
sbb bl, dl
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
setnl cl
or dl, 74
jmp .bb_0.1
.bb_0.1:
sbb rcx, 42
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
add al, -67 # instrumentation
setz bl
lea rcx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and ebx, 88
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
adc bl, 62
sbb bl, cl
add dl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
test dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
