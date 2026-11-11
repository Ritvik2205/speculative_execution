.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
cmovno rdx, rsi
setnl al
add bl, -41 # instrumentation
xchg dl, al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 54
and rsi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rsi]
add al, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, -23
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
cmovb ax, ax
and si, 99
test al, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
