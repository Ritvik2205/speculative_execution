.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
add bl, 97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 53
sbb edx, 105
movzx eax, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, sil
and al, bl
lea rbx, qword ptr [rdx]
lea rcx, qword ptr [rcx + rbx]
add dl, 113 # instrumentation
setnb dl
btr ax, dx
add cl, 32 # instrumentation
cmovnbe rdx, rax
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 91
test cl, cl
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
