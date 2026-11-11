.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
or dl, dl
dec ebx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rdx
jmp .bb_0.1
.bb_0.1:
sbb sil, -19
inc ebx
add cl, 35 # instrumentation
sets al
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
