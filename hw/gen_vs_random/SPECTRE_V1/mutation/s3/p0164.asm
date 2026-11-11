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
xchg dl, al
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
lea rdi, qword ptr [rdx + rsi]
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
add bl, -51 # instrumentation
cmovno rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
