.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
adc rdx, 39
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
sets sil
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
lea di, qword ptr [rcx + rdi + 1965]
setz bl
mov al, dl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
add si, 35
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
bt rcx, 98
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
cmovno edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
