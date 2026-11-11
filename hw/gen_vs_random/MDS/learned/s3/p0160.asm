.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and ax, 27170
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
test eax, -571234566
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or rdi, -11
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
or bl, 43
xor al, -89
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
test bl, cl
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
