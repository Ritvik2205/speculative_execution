.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
setnl dl
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
adc eax, 551972257
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
sbb dx, di
add bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
or al, al
jmp .bb_0.1
.bb_0.1:
mov dl, dl
test rsi, rax
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
adc edi, 122
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52
and bl, 125
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
