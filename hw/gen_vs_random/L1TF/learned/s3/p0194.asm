.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], eax
add al, 31
lea rbx, qword ptr [rdi + rcx + 90]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
setnb cl
xor al, al
jmp .bb_0.1
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
lea di, qword ptr [rax + rdx]
imul cl
mul dl
cmp di, -98
cmovnp rbx, rdi
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
