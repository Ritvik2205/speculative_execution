.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and bl, -74 # instrumentation
cmovns eax, edx
or dil, 12
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
or edx, -78
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and al, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
btr ax, ax
xor bl, -61
bt di, 52
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and dl, 53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rax, rbx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
