.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -93 # instrumentation
cmovb rdx, rcx
add dl, 77 # instrumentation
sbb edx, 9
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
cdq
setnbe al
sbb cl, -11
add al, -117 # instrumentation
setp dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
not rdi
setnl sil
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
cmovl eax, esi
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
btr eax, 231
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
