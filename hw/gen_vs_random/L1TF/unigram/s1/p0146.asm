.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 76
adc esi, edi
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
bt edi, 191
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
add dl, cl
add al, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
add al, -67 # instrumentation
setz dil
test eax, -1410822875
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], esi
neg eax
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rax]
dec dl
cmovp rsi, rcx
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
