.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, -78
and bl, al
and bl, -74 # instrumentation
cmovns eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
or dil, -41
xor bl, -88
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and al, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and dl, 53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
bt di, 52
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
btr ax, ax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rax, rbx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
