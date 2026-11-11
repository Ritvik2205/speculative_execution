.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 23
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
movzx di, cl
sub rcx, -90
setnle al
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
cmovnbe rbx, rdx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
