.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 82 # instrumentation
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 42
imul rcx
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
xchg dil, dil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 47
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
sbb rbx, -117
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
lea eax, qword ptr [rax]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
add bl, -9 # instrumentation
cmovs si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
