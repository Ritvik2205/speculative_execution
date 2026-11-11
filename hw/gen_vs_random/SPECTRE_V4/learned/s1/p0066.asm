.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
lea di, qword ptr [rsi + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
add dil, 16
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
lea si, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 32
or al, -71
test eax, 1880179600
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
sub al, dil
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
test ecx, 73
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
neg cx
imul dl
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
