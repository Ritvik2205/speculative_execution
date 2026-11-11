.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
movsx cx, al
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
add dl, 38 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
lea edi, qword ptr [rdx + rsi + 100]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rax
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
add cl, al
sbb bl, dl
sbb sil, al
not di
xchg cl, cl
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
