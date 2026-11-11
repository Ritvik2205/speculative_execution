.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
lea rax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
movzx edi, dl
dec cl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, -86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
mov cl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rdi + rdx + 30816]
not cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
sets dl
setl cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
