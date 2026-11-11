.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
xor dil, -3
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
xor bl, -27
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and bl, 68
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and sil, dl
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
