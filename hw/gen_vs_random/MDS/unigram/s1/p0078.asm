.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdi, rcx
xor cl, dil
cmovno rdi, rdx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 82
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
xor al, -4
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 93
xor ax, -6793
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
btc si, di
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
xor rdi, rsi
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
or cl, cl
or rcx, rdi
and al, al
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
