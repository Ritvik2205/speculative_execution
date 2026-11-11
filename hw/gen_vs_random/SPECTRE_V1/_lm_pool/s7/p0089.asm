.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
lea di, qword ptr [rax + rcx]
imul dl
and al, bl
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, dl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
xor sil, al
or ax, 18658
and dl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
