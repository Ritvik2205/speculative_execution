.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
sub dl, cl
adc esi, 90
adc dl, bl
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
xchg si, ax
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
movzx rax, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
adc eax, -79
lea rbx, qword ptr [rbx + rax + 31]
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rcx
add bl, sil
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
