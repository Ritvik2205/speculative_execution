.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
test rsi, -1408527332
sbb eax, 1332762061
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
adc dl, 80
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
add ax, 8031
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
sbb rax, 342397759
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
dec dx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
adc bl, 88
mul dl
seto dl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
movsx dx, al
adc dl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
