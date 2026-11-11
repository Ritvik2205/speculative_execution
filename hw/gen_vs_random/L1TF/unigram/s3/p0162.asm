.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rcx, rdi
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
and bl, 89
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
cmovb esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 68
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 1
cwde
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
lea di, qword ptr [rsi]
imul bx, ax
imul bx, si, -58
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
