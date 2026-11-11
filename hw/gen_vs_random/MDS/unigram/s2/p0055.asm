.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
cmovnb edx, edi
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
bt ax, dx
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or ax, 16560
cmovns di, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor cl, cl
and ebx, 45
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
