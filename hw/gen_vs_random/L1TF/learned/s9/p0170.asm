.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, di
sbb si, 50
or dl, dil
and dl, cl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
add dl, al
jmp .bb_0.2
.bb_0.2:
xor bl, sil
add ebx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
