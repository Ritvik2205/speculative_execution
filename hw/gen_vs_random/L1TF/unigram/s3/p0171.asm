.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edi, eax
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
cmovnbe rbx, rdx
lea esi, qword ptr [rcx + rdi]
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
add al, cl
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
or dl, dl
bts edx, eax
mov sil, al
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
mov bx, 21854
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
