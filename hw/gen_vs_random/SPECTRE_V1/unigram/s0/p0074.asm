.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rax, rsi
inc ebx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 12
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 40 # instrumentation
btc rcx, rcx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
add cl, 72 # instrumentation
adc dil, 82
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 66
add al, -61 # instrumentation
seto al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
