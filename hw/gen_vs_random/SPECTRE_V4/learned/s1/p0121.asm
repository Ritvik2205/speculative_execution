.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dil
cmp rax, 2115020203
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
or dl, dil
xor dx, 88
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
setnl dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
or al, 95
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sub di, 19
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 90
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 80
not rbx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
