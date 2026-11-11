.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and cx, si
test dx, di
or si, -12
bts ax, 22
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rsi], cx
and dl, 6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
cmovp ecx, ecx
or dl, al
cmovl rbx, rsi
or al, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
or dil, 12
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
