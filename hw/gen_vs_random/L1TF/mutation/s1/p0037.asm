.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
dec ebx
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
or dl, dl
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
sbb sil, -19
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
add cl, 35 # instrumentation
sets al
inc ebx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
