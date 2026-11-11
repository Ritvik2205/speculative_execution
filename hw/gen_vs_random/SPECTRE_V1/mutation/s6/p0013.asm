.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
or rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
movsx ax, cl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
lea cx, qword ptr [rax + rax + 48724]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and dl, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
add bl, -95
xor al, -74
sbb bl, al
cmovno dx, di
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
movsx di, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
