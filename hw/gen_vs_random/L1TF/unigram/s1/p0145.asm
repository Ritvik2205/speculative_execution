.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rax, rcx
add bl, -19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 22
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
lea dx, qword ptr [rbx + rsi + 29]
lea rdx, qword ptr [rsi + rax]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
bt di, 30
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
add cx, 59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 27
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 11
btr ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
