.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea esi, qword ptr [rdx + rbx + 10762]
setnl dl
lea rsi, qword ptr [rdx + rcx + 57579]
cmp al, -77
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -42 # instrumentation
lea ax, qword ptr [rbx + rdx]
cmovbe rsi, rax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add dl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
adc dl, 80
lea ecx, qword ptr [rdx]
cdq
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 45 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
cmovnbe rcx, rsi
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
mov ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
