.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
or dl, dl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rdx
dec ebx
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
inc ebx
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
sbb sil, 19
add cl, 35 # instrumentation
sets al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
