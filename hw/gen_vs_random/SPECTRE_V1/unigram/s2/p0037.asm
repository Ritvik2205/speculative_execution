.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdx, 35
bts rdi, rax
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
setno dil
mov ax, 92
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -106
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 90
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
cmovs dx, di
test esi, 5
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
xor sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
