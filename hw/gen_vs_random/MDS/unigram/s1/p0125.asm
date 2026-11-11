.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 38
and dl, 84 # instrumentation
cmovl rdi, rcx
btc si, 99
test sil, -96
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
cmovnb bx, cx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 62
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
bts ebx, 205
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 71
test bx, dx
bt ebx, ecx
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 46
or rdx, -109
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
