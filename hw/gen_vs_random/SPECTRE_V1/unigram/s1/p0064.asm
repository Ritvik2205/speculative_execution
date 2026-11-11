.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno dl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
cmp cl, cl
imul rdi, rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 47
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
add cl, 90 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, cl
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
setnb al
mov si, 9258
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
