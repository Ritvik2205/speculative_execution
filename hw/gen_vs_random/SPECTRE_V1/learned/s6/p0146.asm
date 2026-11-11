.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
and bl, cl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp esi, 80
cmp al, bl
adc cx, -30
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and dil, -93
xor dl, al
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
