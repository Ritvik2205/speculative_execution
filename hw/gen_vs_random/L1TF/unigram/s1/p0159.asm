.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 55
and rax, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 62
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
bt rbx, rbx
cmovbe ebx, esi
test sil, 29
btr eax, ebx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
