.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lfence
and dx, 0b111 # instrumentation
lfence
lock bts word ptr [r14 + rdx], dx 
lfence
lea rdx, qword ptr [rcx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rbx], cl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor bx, word ptr [r14 + rcx] 
lfence
add al, bl 
lfence
lea di, qword ptr [rbx] 
lfence
btr rdx, 161 
lfence
btr dx, ax 
lfence
add bl, -58 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovno rcx, qword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock inc qword ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movzx rdi, word ptr [r14 + rsi] 
lfence
and si, bx 
lfence
lea bx, qword ptr [rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovle si, word ptr [r14 + rcx] 
lfence
sbb cl, 83 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rsi], rax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
