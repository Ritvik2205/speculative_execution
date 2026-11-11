.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
lea ebx, qword ptr [rdi + rax + 92]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 94
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
adc rdi, 95
xchg edi, eax
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
lea rsi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 22
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
imul cl
mul dl
mov dil, cl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
