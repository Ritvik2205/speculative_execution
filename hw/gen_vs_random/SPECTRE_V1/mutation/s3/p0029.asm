.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
add eax, 1518653812
setnz cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
mov cl, dl
lea ax, qword ptr [rcx + rdi + 34958]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dx, -128
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
setb dil
movzx edi, cl
cmovb edx, edi
bts rdx, 212
cmovnbe si, di
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
movzx di, sil
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
