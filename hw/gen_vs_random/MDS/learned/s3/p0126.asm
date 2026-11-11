.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 10
or al, cl
cmovle esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
or bl, 84
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
cmovle esi, edx
add sil, 84
dec bl
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and al, -56
xor al, 77
or al, -8
xor al, -15
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
cmp esi, edi
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 87
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
or cl, 100
or ax, -4635
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bts eax, 103
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
xor dl, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
