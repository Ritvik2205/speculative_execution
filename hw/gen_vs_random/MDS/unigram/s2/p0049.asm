.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rbx, rdi
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
test rax, 1207043993
xor bl, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
or rsi, 10
xor dl, dil
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor ax, -12492
jmp .bb_0.1
.bb_0.1:
and dl, -73
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
bts edx, edx
test bx, di
and al, dil
xor ax, bx
test si, 46
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
cmovns rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
