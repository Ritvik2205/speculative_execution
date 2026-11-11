.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 98
add bl, 60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
add dl, -26 # instrumentation
cmovle rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
setnp bl
adc edi, 47
mov dl, 37
add bl, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
and dl, bl
lea edi, qword ptr [rax]
add al, -62 # instrumentation
setnb al
lea di, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
