.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
cmovno cx, ax
lea rbx, qword ptr [rcx + rsi + 85]
jmp .bb_0.1
.bb_0.1:
cbw
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovb rdx, rax
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
or dl, bl
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
cmovle rbx, rax
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
