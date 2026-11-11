.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
setl bl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
add cl, 69 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 41
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and bx, 47
add sil, -87 # instrumentation
cmovnle rax, rsi
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
test rsi, rdx
adc bx, di
cmovl rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
