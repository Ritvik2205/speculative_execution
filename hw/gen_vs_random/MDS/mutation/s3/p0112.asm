.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, rdi
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
xor dl, 40
xor al, bl
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and cl, 91 # instrumentation
cmovle rbx, rbx
cmovbe edi, edi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
test cl, bl
test cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
or cl, -36
test cl, cl
cmovbe si, cx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and bl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
or edx, -78
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and bl, -74 # instrumentation
cmovns eax, edx
and rax, rbx
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and al, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
bt di, 52
btr ax, ax
or dil, -78
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and dl, 53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
