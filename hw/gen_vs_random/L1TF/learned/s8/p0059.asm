.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, cx
cmp eax, 39856325
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or dl, sil
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
add al, 56
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
