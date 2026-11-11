.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], si
adc ax, -27488
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
add sil, -68
or eax, 848176907
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
test al, 34
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
or eax, 848176907
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
add al, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
