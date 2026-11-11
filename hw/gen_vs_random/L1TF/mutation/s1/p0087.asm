.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 59 # instrumentation
cmovns eax, edx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -64
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
inc cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and al, -111
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rsi + rsi]
bts rax, 45
or ebx, edx
cmp cl, -71
adc al, -3
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
lea ecx, qword ptr [rdi + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
xor edx, 101
bt dx, 223
test eax, -1812342404
xor cl, cl
lea ebx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
